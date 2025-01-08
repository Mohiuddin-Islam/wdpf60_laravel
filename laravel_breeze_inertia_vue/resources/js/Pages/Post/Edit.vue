<script setup>
import { usePage, useForm, Link } from '@inertiajs/vue3';

const {post} = usePage().props;

const form = useForm({
    title: post.title,
    body: post.body,
});

const update = () => {
    form.put(route('posts.update', post.id))
}

</script>

<template>
    <div class="container">
        <form @submit.prevent="update">
            <div class="form-group">
                <label for="">Title</label>
                <input type="text" class="form-control" v-model="form.title" placeholder="Enter Title">
            </div>
            <div class="form-group">
                <label for="">Body</label>
                <textarea name="" v-model="form.body" class="form-control" placeholder="Enter Details"></textarea>
            </div>
            <button type="submit" class="btn btn-info" name="submit">UPDATE</button>
        </form>
    </div>
</template>