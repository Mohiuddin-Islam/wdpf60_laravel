<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { useForm, Link } from "@inertiajs/vue3";

const form = useForm({
    name: "",
    dob: "",
    address: "",
    languages: [],
    gender: "",
    district: "",
    photo: ""
});

console.log(form);

const submit = () => {
    form.post("/students");
};
</script>

<template>

<div class="container">
        <Link :href="route('students.index')" class="btn btn-success">Students List</Link>
        <h1 class="display-3">Student Registration Form</h1>
        
        <form @submit.prevent="submit" enctype="multipart/form-data">

            <div class="form-group">
                <label>Name:</label><br>
                <input type="text" class="form-control" v-model="form.name" placeholder="Enter Name">
            </div>

            <div class="form-group">
                <label>Address:</label><br>
                <textarea id="address" placeholder="Enter Address" v-model="form.address" class="form-control"></textarea>
            </div>

            <div class="form-group">
                <label>Date of Birth:</label><br>
                <input type="date" v-model="form.dob" class="form-control">
            </div>

            <div class="form-group">
                <label>Gender:</label><br>
                <input type="radio" name="gender" v-model="form.gender" value="male" class="form-control">Male
                <input type="radio" name="gender" v-model="form.gender" value="female" class="form-control">Female

            </div>

            <div class="form-group">
                <label>District:</label><br>
                <select class="form-control" v-model="form.district">
                    <option value="">Select One</option>
                    <option value="Dhaka">Dhaka</option>
                    <option value="Narayanganj">Narayanganj</option>
                    <option value="Rajshashi">Rajshashi</option>
                    <option value="Pabna">Pabna</option>
                    <option value="Chittagong">Chittagong</option>
                </select>
            </div>

            <div class="form-group">
                <label for="language">Languages:</label><br>
                <input type="checkbox" class="form-control" v-model="form.languages" value="bangla"> Bangla <br>
                <input type="checkbox" class="form-control" v-model="form.languages" value="english"> English <br>
                <input type="checkbox" class="form-control" v-model="form.languages" value="arabic"> Arabic <br>
                <input type="checkbox" class="form-control" v-model="form.languages" value="urdu"> Urdu

            </div>

            <div class="form-group">
                <label>Photo:</label><br>
                <input type="file" @input="form.photo = $event.target.files[0]" class="form-control">
            </div>

            <button type="submit" class="btn btn-info">Submit</button> &nbsp;
            <Link :href="route('students.create')" class="btn btn-warning">Clear</Link>

        </form>
    </div>

</template>