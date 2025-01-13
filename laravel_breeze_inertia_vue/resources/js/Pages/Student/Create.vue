<script setup>
import { Link, useForm } from '@inertiajs/vue3';
import axios from 'axios';

const stu = useForm({
    name: "",
    address: "",
    dob: "",
    gender: "",
    district: "",
    languages: [],
    photo: "",
});

const submit = () =>{
    stu.post(route('students.store'))
}

console.log(stu)
    
</script>

<script>
export default{
    data() {
        return {
    name: "",
    address: "",
    dob: "",
    gender: "",
    district: "",
    languages: [],
    photo: "",
        }
    },

    methods: {
        submit(){
            axios.post(route('students.store'), {
                name:this.name,
                address:this.address,
                dob:this.dob,
                gender:this.gender,
                district:this.district,
                languages:this.languages,
                
            }).then(function(response){
                console.log(data)
            })
        }
    },
}

</script>


<template>
    <div class="container">
        <Link :href="route('students.index')" class="btn btn-success">Students List</Link>
        <h1 class="display-3">Student Registration Form</h1>
        
        <form @submit.prevent="submit">

            <div class="form-group">
                <label>Name:</label><br>
                <input type="text" class="form-control" v-model="stu.name" placeholder="Enter Name">
            </div>

            <div class="form-group">
                <label>Address:</label><br>
                <textarea id="address" placeholder="Enter Address" v-model="stu.address" class="form-control"></textarea>
            </div>

            <div class="form-group">
                <label>Date of Birth:</label><br>
                <input type="date" v-model="stu.dob" class="form-control">
            </div>

            <div class="form-group">
                <label>Gender:</label><br>
                <input type="radio" v-model="stu.gender" value="male" class="form-control">Male <br>
                <input type="radio" v-model="stu.gender" value="female" class="form-control">Female

            </div>

            <div class="form-group">
                <label>District:</label><br>
                <select class="form-control" v-model="stu.district">
                    <option value="">Select One</option>
                    <option value="0">Dhaka</option>
                    <option value="1">Narayanganj</option>
                    <option value="2">Rajshashi</option>
                    <option value="3">Pabna</option>
                    <option value="4">Chittagong</option>
                </select>
            </div>

            <div class="form-group">
                <label for="language">Languages:</label><br>
                <input type="checkbox" class="form-control" v-model="stu.languages" value="bangla"> Bangla <br>
                <input type="checkbox" class="form-control" v-model="stu.languages" value="english"> English <br>
                <input type="checkbox" class="form-control" v-model="stu.languages" value="arabic"> Arabic <br>
                <input type="checkbox" class="form-control" v-model="stu.languages" value="urdu"> Urdu

            </div>

            <div class="form-group">
                <label>Photo:</label><br>
                <input type="file" class="form-control" >
            </div>

            <button type="submit" class="btn btn-info">Submit</button> &nbsp;
            <Link :href="route('students.create')" class="btn btn-warning">Clear</Link>

        </form>
    </div>
</template>

<style scoped>

</style>