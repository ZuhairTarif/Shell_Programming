#include<stdio.h>
#include<stdlib.h>
#define MAX_PROCESS 10
#define TIME_QUANTUM 2

struct process
{
    char name[10];
    int burst_time;
    int remaining_time;
    int arrival_time;
    int waiting_time;
    int turnaround_time;
    int completion_time;
};

int main()
{
    struct process processes[MAX_PROCESS];
    int n, i, j, time = 0, remaining_processes = 0;
    float average_waiting_time = 0, average_turnaround_time = 0;

    printf("Enter the number of processes: ");
    scanf("%d", &n);

    // Input the details of each process
    for(i = 0; i < n; i++)
    {
        printf("Enter the details of process %d:\n", i+1);
        printf("Name: ");
        scanf("%s", processes[i].name);
        printf("Burst Time: ");
        scanf("%d", &processes[i].burst_time);
        processes[i].remaining_time = processes[i].burst_time;
        printf("Arrival Time: ");
        scanf("%d", &processes[i].arrival_time);
        printf("\n");
    }

    // Perform Round Robin scheduling
    while(remaining_processes != n)
    {
        for(i = 0; i < n; i++)
        {
            if(processes[i].remaining_time > 0)
            {
                if(processes[i].remaining_time <= TIME_QUANTUM)
                {
                    time += processes[i].remaining_time;
                    processes[i].remaining_time = 0;
                    processes[i].completion_time = time;
                    remaining_processes++;
                }
                else
                {
                    time += TIME_QUANTUM;
                    processes[i].remaining_time -= TIME_QUANTUM;
                }
                if(processes[i].remaining_time == 0)
                {
                    processes[i].turnaround_time = processes[i].completion_time - processes[i].arrival_time;
                    processes[i].waiting_time = processes[i].turnaround_time - processes[i].burst_time;
                    average_waiting_time += processes[i].waiting_time;
                    average_turnaround_time += processes[i].turnaround_time;
                }
            }
        }
    }

    // Calculate and display the average waiting time and average turnaround time
    average_waiting_time /= n;
    average_turnaround_time /= n;

    printf("Name\tBurst Time\tArrival Time\tWaiting Time\tTurnaround Time\n");
    for(i = 0; i < n; i++)
    {
        printf("%s\t%d\t\t%d\t\t%d\t\t%d\n", processes[i].name, processes[i].burst_time, processes[i].arrival_time, processes[i].waiting_time, processes[i].turnaround_time);
    }

    printf("Average Waiting Time: %f\n", average_waiting_time);
    printf("Average Turnaround Time: %f\n", average_turnaround_time);

    return 0;
}
