#include <stdio.h>
#include <syslog.h>
#include <errno.h>

int main (int argc, char* argv[]) {
    

    openlog(NULL, 0, LOG_USER);

    if (argc != 3) {
        syslog(LOG_ERR, "Invalid number of arguments: %d\n", argc);
        return 1;
    }

    else {
            FILE* file = fopen(argv[1], "w");
        if (file == NULL) {
            syslog(LOG_ERR, "Error opening file %s\n", argv[1]);
            return 1;
        }
        else {
            fprintf(file, "%s", argv[2]);
            syslog(LOG_DEBUG, "Writing %s to file %s", argv[2], argv[1]);
            fclose(file);
        }
    }

    closelog ();
    
    return 0;
}
