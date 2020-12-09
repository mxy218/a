.class final Lcom/android/server/print/PrintShellCommand;
.super Landroid/os/ShellCommand;
.source "PrintShellCommand.java"


# instance fields
.field final mService:Landroid/print/IPrintManager;


# direct methods
.method constructor <init>(Landroid/print/IPrintManager;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    .line 36
    return-void
.end method

.method private parseUserId()Ljava/lang/Integer;
    .registers 5

    .line 87
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_35

    .line 89
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 90
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private runGetBindInstantServiceAllowed()I
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 56
    if-nez v0, :cond_8

    .line 57
    const/4 v0, -0x1

    return v0

    .line 60
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Landroid/print/IPrintManager;->getBindInstantServiceAllowed(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 64
    goto :goto_22

    .line 62
    :catch_1e
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 65
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private runSetBindInstantServiceAllowed()I
    .registers 4

    .line 69
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 70
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 71
    return v1

    .line 73
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 74
    if-nez v2, :cond_18

    .line 75
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no true/false specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return v1

    .line 79
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->setBindInstantServiceAllowed(IZ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    .line 82
    goto :goto_2a

    .line 80
    :catch_26
    move-exception v0

    .line 81
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 83
    :goto_2a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 40
    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 43
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x333457d5

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_23

    const v1, 0x2f0ea69f

    if-eq v0, v1, :cond_18

    :cond_17
    goto :goto_2d

    :cond_18
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    move p1, v2

    goto :goto_2e

    :cond_23
    const-string v0, "get-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    goto :goto_2e

    :goto_2d
    move p1, v3

    :goto_2e
    if-eqz p1, :cond_38

    if-eq p1, v2, :cond_33

    .line 51
    return v3

    .line 48
    :cond_33
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->runSetBindInstantServiceAllowed()I

    move-result p1

    return p1

    .line 45
    :cond_38
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->runGetBindInstantServiceAllowed()I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 102
    const-string v1, "Print service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "    Set whether binding to print services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Get whether binding to print services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method
