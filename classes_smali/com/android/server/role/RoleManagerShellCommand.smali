.class Lcom/android/server/role/RoleManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "RoleManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;
    }
.end annotation


# instance fields
.field private final mRoleManager:Landroid/app/role/IRoleManager;


# direct methods
.method constructor <init>(Landroid/app/role/IRoleManager;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/role/RoleManagerShellCommand;->mRoleManager:Landroid/app/role/IRoleManager;

    .line 39
    return-void
.end method

.method private getFlagsMaybe()I
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_8

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserIdMaybe()I
    .registers 3

    .line 92
    nop

    .line 93
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_18

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 95
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    .line 97
    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private runAddRoleHolder()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getUserIdMaybe()I

    move-result v4

    .line 110
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getFlagsMaybe()I

    move-result v3

    .line 114
    new-instance v6, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;-><init>(Lcom/android/server/role/RoleManagerShellCommand;Lcom/android/server/role/RoleManagerShellCommand$1;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/role/RoleManagerShellCommand;->mRoleManager:Landroid/app/role/IRoleManager;

    .line 116
    invoke-virtual {v6}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->createCallback()Landroid/os/RemoteCallback;

    move-result-object v5

    .line 115
    invoke-interface/range {v0 .. v5}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 117
    invoke-virtual {v6}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->waitForResult()I

    move-result v0

    return v0
.end method

.method private runClearRoleHolders()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getUserIdMaybe()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getFlagsMaybe()I

    move-result v2

    .line 137
    new-instance v3, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;-><init>(Lcom/android/server/role/RoleManagerShellCommand;Lcom/android/server/role/RoleManagerShellCommand$1;)V

    .line 138
    iget-object v4, p0, Lcom/android/server/role/RoleManagerShellCommand;->mRoleManager:Landroid/app/role/IRoleManager;

    invoke-virtual {v3}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->createCallback()Landroid/os/RemoteCallback;

    move-result-object v5

    invoke-interface {v4, v1, v2, v0, v5}, Landroid/app/role/IRoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 139
    invoke-virtual {v3}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->waitForResult()I

    move-result v0

    return v0
.end method

.method private runRemoveRoleHolder()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getUserIdMaybe()I

    move-result v4

    .line 122
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getFlagsMaybe()I

    move-result v3

    .line 126
    new-instance v6, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;-><init>(Lcom/android/server/role/RoleManagerShellCommand;Lcom/android/server/role/RoleManagerShellCommand$1;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/role/RoleManagerShellCommand;->mRoleManager:Landroid/app/role/IRoleManager;

    .line 128
    invoke-virtual {v6}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->createCallback()Landroid/os/RemoteCallback;

    move-result-object v5

    .line 127
    invoke-interface/range {v0 .. v5}, Landroid/app/role/IRoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 129
    invoke-virtual {v6}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->waitForResult()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 8

    .line 69
    if-nez p1, :cond_7

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/role/RoleManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 75
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6d2cf849

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_37

    const v3, -0x5987b690

    if-eq v2, v3, :cond_2d

    const v3, -0x4bfb34e6

    if-eq v2, v3, :cond_22

    :cond_21
    goto :goto_41

    :cond_22
    const-string/jumbo v2, "remove-role-holder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v5

    goto :goto_42

    :cond_2d
    const-string v2, "clear-role-holders"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v4

    goto :goto_42

    :cond_37
    const-string v2, "add-role-holder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_42

    :goto_41
    move v2, v1

    :goto_42
    if-eqz v2, :cond_57

    if-eq v2, v5, :cond_52

    if-eq v2, v4, :cond_4d

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/role/RoleManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 81
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->runClearRoleHolders()I

    move-result p1

    return p1

    .line 79
    :cond_52
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->runRemoveRoleHolder()I

    move-result p1

    return p1

    .line 77
    :cond_57
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerShellCommand;->runAddRoleHolder()I

    move-result p1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_5b} :catch_5c

    return p1

    .line 85
    :catch_5c
    move-exception p1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 144
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 145
    const-string v1, "Role manager (role) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 149
    const-string v1, "  add-role-holder [--user USER_ID] ROLE PACKAGE [FLAGS]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v1, "  remove-role-holder [--user USER_ID] ROLE PACKAGE [FLAGS]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v1, "  clear-role-holders [--user USER_ID] ROLE [FLAGS]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 153
    return-void
.end method
