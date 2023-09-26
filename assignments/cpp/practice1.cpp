#include<iostream>
#include<string>

using namespace std;

class Movie{
    private:
        string title;
        string director;
        int release_year;
        string rating;
    public:
        Movie(string new_title = "", string new_director = "", int new_release_year = 0, string new_rating = ""){
            title = new_title;
            director = new_director;
            release_year = new_release_year;
            rating = new_rating;
        }
        void printMovie();
};

void Movie::printMovie(){
    cout << title << endl << "Directed by: " << director << " in " << release_year << endl << "Rated: " << rating;
}

int main(){
    Movie movie1("Edward Scissorhands", "Tim Burton", 1990, "PG-13");
    Movie movie2("Avatar", "James Cameron", 2009, "PG-13");

    Movie* mp = &movie2;

    movie1.printMovie();
    cout << endl;;
    mp->printMovie();
    return 0;
}