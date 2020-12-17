.class final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShellCommandImpl"
.end annotation


# instance fields
.field final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 4978
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "service"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4893
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4894
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4895
    return-void
.end method

.method private onCommandWithSystemIdentity(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"  # Ljava/lang/String;

    .line 4924
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4925
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result v0

    return v0

    .line 4928
    :cond_e
    const-string v0, "get-last-switch-user-id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4929
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 4933
    :cond_1d
    const-string/jumbo v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 4934
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4935
    .local v0, "imeCommand":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_c8

    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto/16 :goto_c8

    .line 4939
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_d2

    :cond_4b
    goto :goto_81

    :sswitch_4c
    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v5

    goto :goto_82

    :sswitch_56
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v3

    goto :goto_82

    :sswitch_61
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v1

    goto :goto_82

    :sswitch_6c
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v4

    goto :goto_82

    :sswitch_77
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v7

    goto :goto_82

    :goto_81
    move v2, v6

    :goto_82
    if-eqz v2, :cond_c1

    if-eq v2, v7, :cond_ba

    if-eq v2, v5, :cond_b3

    if-eq v2, v4, :cond_ac

    if-eq v2, v3, :cond_a5

    .line 4951
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    return v6

    .line 4949
    :cond_a5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4947
    :cond_ac
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4945
    :cond_b3
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4943
    :cond_ba
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4941
    :cond_c1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4936
    :cond_c8
    :goto_c8
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 4937
    return v1

    .line 4956
    .end local v0  # "imeCommand":Ljava/lang/String;
    :cond_cc
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_d2
    .sparse-switch
        -0x4d6ada7d -> :sswitch_77
        0x1bc62 -> :sswitch_6c
        0x32b09e -> :sswitch_61
        0x6761d4f -> :sswitch_56
        0x639e22e8 -> :sswitch_4c
    .end sparse-switch
.end method

.method private onImeCommandHelp()V
    .registers 7

    .line 4982
    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4983
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4982
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    nop

    .line 4984
    :try_start_12
    const-string/jumbo v3, "ime <command>:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4987
    const-string/jumbo v3, "list [-a] [-s]"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4989
    const-string/jumbo v3, "prints all enabled input methods."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4991
    const-string v3, "-a: see all input methods"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    const-string v3, "-s: only a single summary line of each"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4994
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4996
    const-string v3, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4998
    const-string v3, "allows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5000
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5001
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5002
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5003
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5005
    const-string v3, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5007
    const-string v3, "disallows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5009
    const-string v3, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5010
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5012
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5014
    const-string/jumbo v3, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5016
    const-string/jumbo v3, "switches to the given input method ID."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5018
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5021
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5023
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5025
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5027
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5028
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5032
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5034
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_b8
    .catchall {:try_start_12 .. :try_end_b8} :catchall_bd

    .line 5035
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 5036
    .end local v2  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 4982
    .restart local v2  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_bd
    move-exception v0

    .end local v2  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :try_start_be
    throw v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    .line 5035
    .restart local v2  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :catchall_bf
    move-exception v1

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private refreshDebugProperties()I
    .registers 2

    .line 4962
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4963
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4964
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"  # Ljava/lang/String;

    .line 4911
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"  # Ljava/lang/String;

    .line 4907
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V

    .line 4911
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4915
    .local v0, "identity":J
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    .line 4917
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4915
    return v2

    .line 4917
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onHelp()V
    .registers 4

    .line 4970
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4971
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_4
    const-string v1, "InputMethodManagerService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    const-string v1, "  dump [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    const-string v1, "    Synonym of dumpsys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    const-string v1, "  ime <command> [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    const-string v1, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2c

    .line 4978
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4979
    .end local v0  # "pw":Ljava/io/PrintWriter;
    return-void

    .line 4970
    .restart local v0  # "pw":Ljava/io/PrintWriter;
    :catchall_2c
    move-exception v1

    .end local v0  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :try_start_2d
    throw v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 4978
    .restart local v0  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :catchall_2e
    move-exception v2

    if-eqz v0, :cond_34

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_34
    throw v2
.end method
