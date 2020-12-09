.class final Lcom/android/server/accessibility/AccessibilityShellCommand;
.super Landroid/os/ShellCommand;
.source "AccessibilityShellCommand.java"


# instance fields
.field final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 33
    return-void
.end method

.method private parseUserId()Ljava/lang/Integer;
    .registers 5

    .line 77
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_35

    .line 79
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 80
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private runGetBindInstantServiceAllowed()I
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 53
    if-nez v0, :cond_8

    .line 54
    const/4 v0, -0x1

    return v0

    .line 56
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getBindInstantServiceAllowed(I)Z

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method private runSetBindInstantServiceAllowed()I
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 63
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 64
    return v1

    .line 66
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 67
    if-nez v2, :cond_18

    .line 68
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no true/false specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    return v1

    .line 71
    :cond_18
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setBindInstantServiceAllowed(IZ)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 37
    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 40
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

    .line 48
    return v3

    .line 45
    :cond_33
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runSetBindInstantServiceAllowed()I

    move-result p1

    return p1

    .line 42
    :cond_38
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runGetBindInstantServiceAllowed()I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 92
    const-string v1, "Accessibility service (accessibility) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Set whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Get whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method
