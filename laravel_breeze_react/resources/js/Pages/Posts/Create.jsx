import { useForm } from "@inertiajs/react";
import React from "react";

export default function Create() {

    const{data, setData, errors, post} = useForm({
        title: "",
        body: ""
    })

    function handleSubmit(e) {
        e.preventDefault();
        post(route("post.store"));
        //alert("Data Sent");

    }
    //console.log(data);

    return (
        <>
            <h1>Post Entry</h1>
            <form action="" onSubmit={handleSubmit}>

                Title: <br/><input type="text" name="title" placeholder="Enter Title" value={data.title} onChange={(e)=>setData("title", e.target.value)} /><span className="text-red-600">{errors.title}</span><br />
                Body: <br/><textarea
                    name="body" placeholder="Enter Body" onChange={(e)=>setData("body", e.target.value)}
                >{data.body}</textarea><span className="text-red-600">{errors.body}</span><br />
            <button type="submit" className="px-6 py-2 font-bold text-white bg-green-500 rounded">SUBMIT</button>

            </form>
        </>
    );
}
