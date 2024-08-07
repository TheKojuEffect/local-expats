import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import {Controller, useForm} from 'react-hook-form';
import Box from "@mui/material/Box";
import {useRouter} from "next/router";
import React, {FC} from "react";
import {getPostUrl, PostDto} from "./PostDto";
import {post} from "../util/Fetch";
import {LocationId} from "../location/SelectedLocation";
import {LocationSelect} from "../location/LocationSelect";
import {usePostBookmarks} from "./PostBookmarks";

type CreatePostDto = {
    title: string,
    message?: string,
    locationId: LocationId,
    image?: string,
};

export const CreatePost: FC = () => {
    const router = useRouter();
    const {addBookmark} = usePostBookmarks();
    const {register, handleSubmit, control, formState: {errors}} = useForm<CreatePostDto>();
    const onSubmit = (data: CreatePostDto) =>
        post<PostDto>('/api/posts', data)
            .then((post) => {
                addBookmark(post.id, false);
                return router.push(getPostUrl(post));
            });

    return (
        <Box
            sx={{
                mx: 2,
                mt: 3,
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
            }}
        >
            <Typography component="h1" variant="h5">
                Create a post
            </Typography>
            <Box component="form" noValidate onSubmit={handleSubmit(onSubmit)} sx={{mt: 3}}>
                <Grid container spacing={2}>
                    <Grid item xs={12}>
                        <TextField
                            variant="outlined"
                            required
                            fullWidth
                            label="Title"
                            autoFocus
                            {...register('title', {required: true, minLength: 2})}
                            error={!!errors.title}
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <TextField
                            variant="outlined"
                            multiline
                            minRows={3}
                            maxRows={6}
                            fullWidth
                            label="Message"
                            {...register('message')}
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <Controller
                            name="locationId"
                            control={control}
                            rules={{required: true}}
                            defaultValue={undefined}
                            render={
                                ({field: {onChange}}) =>
                                    <LocationSelect
                                        label="Post in"
                                        onChange={(location) => {
                                            onChange(location.id)
                                        }}
                                        error={!!errors.locationId}
                                    />
                            }
                        />
                    </Grid>
                    <Grid item xs={6}>
                        <Button
                            type="reset"
                            fullWidth
                            variant="outlined"
                            color="primary"
                            sx={{mt: 3, mb: 2}}
                            onClick={router.back}
                        >
                            Cancel
                        </Button>
                    </Grid>
                    <Grid item xs={6}>
                        <Button
                            type="submit"
                            fullWidth
                            variant="contained"
                            color="primary"
                            sx={{mt: 3, mb: 2}}
                        >
                            Post
                        </Button>
                    </Grid>
                </Grid>
            </Box>
        </Box>
    )
        ;
}

