<script setup>
import { usePage, Link, useForm } from '@inertiajs/vue3';

//const {posts} = usePage().props

const form = useForm({});

const deleteForm =(id) =>{
    form.delete(`posts/${id}`)
}

defineProps({
    posts: {
    type: Array,
    default: () => [],
    },
});

</script>

<template>
    <div class="container">
        <h1 class="display-1">Welcome to Vue with Laravel</h1> <br>
        <Link :href="route('posts.create')" class="bg-blue-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded my-3">New Entry</Link>  
        <br><br>
        <table class="table table-bordered">
            <tr>
                <th>Sn</th>
                <th>Title</th>
                <th>Details</th>
                <th style="width: 230px;">Action</th>
            </tr>
            <tr v-for="x in posts" :key="x.id">
                <td>{{ x.id }}</td>
                <td>{{ x.title }}</td>
                <td>{{ x.body }}</td>
                <td>
                    <Link :href="route('posts.edit', x.id)" class="btn btn-info">Edit</Link> ||

                    <button class="btn btn-danger" @click="deleteForm(x.id)">Delete</button> 
                </td>
            </tr>
        </table>
    </div>
</template>




<style scoped></style>