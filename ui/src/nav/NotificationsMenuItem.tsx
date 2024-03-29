import {Badge, ListItemIcon, ListItemText, Menu, MenuItem} from "@mui/material";
import {Notifications, QuestionAnswer} from "@mui/icons-material";
import React, {FC, useState} from "react";
import {get} from "../util/Fetch";
import {PostDto} from "../post/PostDto";
import {useQuery} from "@tanstack/react-query";
import {usePostBookmarks} from "../post/PostBookmarks";
import {PostLink} from "../post/PostLink";
import {useIsSmallScreen} from "../util/useUtils";
import {NavIcon} from "./NavIcon";

export const NotificationsMenuItem: FC = () => {
    const {postIds, notificationsLastChecked, updateNotificationsLastChecked} = usePostBookmarks();
    const ids = postIds.join(',');
    const fetchUpdatedPosts = () => {
        if (!postIds.length) {
            return Promise.resolve([]);
        }
        return get<PostDto[]>('/api/posts/updated', {
            ids,
            since: notificationsLastChecked,
        });
    };
    const {data, refetch} = useQuery({
        queryKey: ['notifications'],
        queryFn: fetchUpdatedPosts,
        refetchInterval: 2 * 60 * 1000, // 2 minutes
    });

    const [anchorElUser, setAnchorElUser] = useState<null | HTMLElement>(null);

    const handleOpenUserMenu = (event: React.MouseEvent<HTMLElement>) => {
        setAnchorElUser(event.currentTarget);
    };
    const handleCloseUserMenu = () => {
        setAnchorElUser(null);
    };

    const handleNotificationClick = (event: React.MouseEvent<HTMLElement>) => {
        void refetch();
        handleOpenUserMenu(event);
        updateNotificationsLastChecked();
    }

    const isSmallScreen = useIsSmallScreen();
    const updatedPosts = data ?? [];
    return (
        <>
            <MenuItem>
                <NavIcon onClick={handleNotificationClick}>
                    <Badge badgeContent={updatedPosts.length} color="info">
                        <Notifications/>
                    </Badge>
                </NavIcon>
                <p>Notifications</p>

            </MenuItem>
            <Menu
                sx={{mt: 5}}
                anchorEl={anchorElUser}
                keepMounted
                anchorOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                }}
                transformOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                }}
                open={Boolean(anchorElUser)}
                onClose={handleCloseUserMenu}
                PaperProps={{
                    style: {
                        width: isSmallScreen ? '100%' : '350px'
                    }
                }}
            >
                {updatedPosts.map((post) => (
                    <PostLink post={post} key={post.id}>
                        <MenuItem onClick={handleCloseUserMenu}>
                            <ListItemIcon>
                                <Badge badgeContent={post.noOfComments} color="info">
                                    <QuestionAnswer fontSize="small"/>
                                </Badge>
                            </ListItemIcon>
                            <ListItemText secondary={post.title} secondaryTypographyProps={{noWrap: true}}/>
                        </MenuItem>
                    </PostLink>
                ))}
                {updatedPosts.length === 0 &&
                    <MenuItem onClick={handleCloseUserMenu}>
                        <ListItemText primary="No new notifications at this time."
                                      secondary="Bookmark posts to get notified.">
                        </ListItemText>
                    </MenuItem>
                }
            </Menu>
        </>
    );
}