import {createContext, FC, PropsWithChildren, useContext, useEffect, useState} from "react";
import {get} from "../util/Fetch";
import {UserWithAuthTokenResponse} from "./User";

const AuthTokenKey = "AuthToken";

const getAuthToken = () => localStorage.getItem(AuthTokenKey)
const setAuthToken = (token: string | undefined) =>
    token ?
        localStorage.setItem(AuthTokenKey, token)
        : localStorage.removeItem(AuthTokenKey);

export const getAuthHeader = () => {
    const authToken = getAuthToken();
    return {
        ...(authToken && {Authorization: `Bearer ${authToken}`})
    };
}

export enum AuthStatus {
    UNAUTHENTICATED,
    LOADING,
    AUTHENTICATED,
}

type Auth = {
    status: AuthStatus;
    unauthenticated: boolean;
    loading: boolean;
    authenticated: boolean;
    updateAuth: (userWithAuthToken: UserWithAuthTokenResponse) => void;
    removeAuth: () => void;
}

const AuthContext = createContext<Auth | undefined>(undefined);

export const AuthProvider: FC<PropsWithChildren> = ({children}) => {
    const [status, setStatus] = useState(AuthStatus.UNAUTHENTICATED);

    const refreshAuth = () => {
        setStatus(AuthStatus.LOADING);
        get<UserWithAuthTokenResponse>("api/user")
            .then(() => setStatus(AuthStatus.AUTHENTICATED))
            .catch(() => setStatus(AuthStatus.UNAUTHENTICATED));
    }

    const updateAuth = ({authToken}: UserWithAuthTokenResponse) => {
        setStatus(AuthStatus.AUTHENTICATED)
        setAuthToken(authToken)
    };

    const removeAuth = () => {
        setAuthToken(undefined);
        setStatus(AuthStatus.UNAUTHENTICATED);
    }

    useEffect(refreshAuth, []);

    const loading = status === AuthStatus.LOADING;
    const authenticated = status === AuthStatus.AUTHENTICATED;
    const unauthenticated = status === AuthStatus.UNAUTHENTICATED;

    return (
        <AuthContext.Provider value={{status, unauthenticated, loading, authenticated, updateAuth, removeAuth}}>
            {children}
        </AuthContext.Provider>
    );
}

export function useAuth(): Auth {
    const auth = useContext(AuthContext);
    if (auth === undefined) {
        throw new Error('useAuth must be used within an AuthProvider');
    }
    return auth;
}