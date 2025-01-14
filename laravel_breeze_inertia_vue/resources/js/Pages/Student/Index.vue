<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { useForm, Link, usePage } from "@inertiajs/vue3";


const deleteForm =(id) =>{
    form.delete(`students/${id}`)
}

defineProps({
    student: {
        type: Array,
        default: () => [],
    },

    languages: {
        type: Array,
        default: () => [],
    },
});

const LangConvert = (lang)=>{
    return JSON.parse(lang).join(', ');
}
</script>

<template>
    <div class="container">
        <Link :href="route('students.create')" class="btn btn-success"
            >Add New</Link
        >
        <h1 class="display-1">Students List</h1><br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Name</th>
                    <th>Photo</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>District</th>
                    <th>Language</th>
                    <th style="width: 240px;">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="x in student" :key="x.id">
                    <td>{{ x.id }}</td>
                    <td>{{ x.name }}</td>
                    <td><img :src="x.photo" width="100"></td>
                    <td>{{ x.address }}</td>
                    <td>{{ x.gender }}</td>
                    <td>{{ x.dob }}</td>
                    <td>{{ x.district }}</td>
                    <td>
                        {{LangConvert( x.languages)}}
                    </td>

                    <td class="border px-4 py-2">
                        <Link :href="`students/${student.id}/edit`"><button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Edit</button></Link>
                        <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded ml-2" @click="deleteForm(student.id)">Delete</button>
                    </td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Name</th>
                    <th>Photo</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>District</th>
                    <th>Language</th>
                    <th>Action</th>
                </tr>
            </tfoot>
        </table>
    </div>
</template>

<style scoped>

</style>
