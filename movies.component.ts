import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { IMovie } from 'src/app/utility/movie';

@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.scss']
})
export class MoviesComponent implements OnInit {

  moviesList:IMovie[] = [
{
  name:"Ocean 8",
  image:"https://th.bing.com/th/id/OIP.ME713_4_aKtl_2DWgesPCwHaEK?pid=ImgDet&rs=1",
  directorName:"Gary Ross",
  releaseDate:new Date("2018-06-05")
},
{
  name:"Ocean 11",
  image:"https://th.bing.com/th/id/OIP.q9T0SDlggW0L4g9c359SDwHaEc?pid=ImgDet&rs=1",
  directorName:"Gary Ross",
  releaseDate:new Date("2001-06-05")
},
{
  name:"Ocean 12",
  image:"https://fanart.tv/fanart/movies/163/moviethumb/oceans-twelve-51c9f35c631c7.jpg",
  directorName:"Gary Ross",
  releaseDate:new Date("2004-06-05")
},
{
  name:"Ocean 13",
  image:"https://th.bing.com/th/id/OIP.qOAo9sV0ATZqsya2qOiz-gHaEK?pid=ImgDet&rs=1",
  directorName:"Gary Ross",
  releaseDate:new Date("2007-06-05")
}
  ];

  searchBy:string = "";
 
 //watchedMovies:[string, string][]=[];

  // onSelect(movie:[string,string]){
  //   this.watchedMovies.push(movie);
  //   this.moviesList = this.moviesList.filter(obj=>obj !==movie  );
  // }
  constructor() { }

  ngOnInit(): void {
  }


}
