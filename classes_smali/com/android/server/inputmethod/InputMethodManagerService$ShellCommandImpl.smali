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
    .registers 2

    .line 4815
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 4730
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4731
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4732
    return-void
.end method

.method private onCommandWithSystemIdentity(Ljava/lang/String;)I
    .registers 9

    .line 4761
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4762
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result p1

    return p1

    .line 4765
    :cond_e
    const-string v0, "get-last-switch-user-id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4766
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p1

    return p1

    .line 4770
    :cond_1d
    const-string v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 4771
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 4772
    const/4 v0, 0x0

    if-eqz p1, :cond_c6

    const-string v1, "help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    const-string v1, "-h"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto/16 :goto_c6

    .line 4776
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_d0

    :cond_4a
    goto :goto_7f

    :sswitch_4b
    const-string v1, "disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v4

    goto :goto_80

    :sswitch_55
    const-string/jumbo v1, "reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_80

    :sswitch_60
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v0

    goto :goto_80

    :sswitch_6a
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v3

    goto :goto_80

    :sswitch_75
    const-string v1, "enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v6

    goto :goto_80

    :goto_7f
    move v1, v5

    :goto_80
    if-eqz v1, :cond_bf

    if-eq v1, v6, :cond_b8

    if-eq v1, v4, :cond_b1

    if-eq v1, v3, :cond_aa

    if-eq v1, v2, :cond_a3

    .line 4788
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    return v5

    .line 4786
    :cond_a3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p1

    return p1

    .line 4784
    :cond_aa
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p1

    return p1

    .line 4782
    :cond_b1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p1

    return p1

    .line 4780
    :cond_b8
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p1

    return p1

    .line 4778
    :cond_bf
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p1

    return p1

    .line 4773
    :cond_c6
    :goto_c6
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 4774
    return v0

    .line 4793
    :cond_ca
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :sswitch_data_d0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_75
        0x1bc62 -> :sswitch_6a
        0x32b09e -> :sswitch_60
        0x6761d4f -> :sswitch_55
        0x639e22e8 -> :sswitch_4b
    .end sparse-switch
.end method

.method private onImeCommandHelp()V
    .registers 7

    .line 4819
    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4820
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4819
    nop

    .line 4821
    :try_start_12
    const-string v3, "ime <command>:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4824
    const-string v3, "list [-a] [-s]"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4826
    const-string/jumbo v3, "prints all enabled input methods."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4827
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4828
    const-string v3, "-a: see all input methods"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4829
    const-string v3, "-s: only a single summary line of each"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4831
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4833
    const-string v3, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4834
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4835
    const-string v3, "allows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4836
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4837
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4840
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4842
    const-string v3, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4844
    const-string v3, "disallows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4846
    const-string v3, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4847
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4849
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4851
    const-string/jumbo v3, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4853
    const-string/jumbo v3, "switches to the given input method ID."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4855
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4856
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4857
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4858
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4860
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4861
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4862
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4864
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4865
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4866
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4869
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4871
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_b6
    .catchall {:try_start_12 .. :try_end_b6} :catchall_bb

    .line 4872
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4873
    return-void

    .line 4819
    :catchall_bb
    move-exception v0

    :try_start_bc
    throw v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    .line 4872
    :catchall_bd
    move-exception v1

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private refreshDebugProperties()I
    .registers 2

    .line 4799
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4800
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4801
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(Ljava/lang/String;)V
    .registers 4

    .line 4748
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    .line 4744
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V

    .line 4748
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4752
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    .line 4754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4752
    return p1

    .line 4754
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onHelp()V
    .registers 4

    .line 4807
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4808
    :try_start_4
    const-string v1, "InputMethodManagerService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4809
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    const-string v1, "  dump [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    const-string v1, "    Synonym of dumpsys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    const-string v1, "  ime <command> [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4814
    const-string v1, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2c

    .line 4815
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4816
    return-void

    .line 4807
    :catchall_2c
    move-exception v1

    :try_start_2d
    throw v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 4815
    :catchall_2e
    move-exception v2

    if-eqz v0, :cond_34

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_34
    throw v2
.end method
