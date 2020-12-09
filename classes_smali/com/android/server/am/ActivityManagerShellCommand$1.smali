.class Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .registers 7

    .line 320
    const-string v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 321
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 322
    :cond_11
    const-string v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 323
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 324
    :cond_22
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 325
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 326
    :cond_31
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 327
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 329
    :cond_49
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 330
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 332
    :cond_62
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 333
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 334
    :cond_79
    const-string v0, "--streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 335
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 336
    :cond_88
    const-string v0, "--attach-agent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Multiple --attach-agent(-bind) not supported"

    if-eqz v0, :cond_b2

    .line 337
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 338
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    return v2

    .line 342
    :cond_a2
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 344
    :cond_b2
    const-string v0, "--attach-agent-bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 345
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ca

    .line 346
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    return v2

    .line 350
    :cond_ca
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 352
    :cond_da
    const-string p2, "-R"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f1

    .line 353
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 354
    :cond_f1
    const-string p2, "-S"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_100

    .line 355
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1ad

    .line 356
    :cond_100
    const-string p2, "--track-allocation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_110

    .line 357
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 358
    :cond_110
    const-string p2, "--user"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_127

    .line 359
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1ad

    .line 360
    :cond_127
    const-string p2, "--receiver-permission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13a

    .line 361
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1ad

    .line 362
    :cond_13a
    const-string p2, "--display"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_150

    .line 363
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1ad

    .line 364
    :cond_150
    const-string p2, "--windowingMode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_166

    .line 365
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1ad

    .line 366
    :cond_166
    const-string p2, "--activityType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17c

    .line 367
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1ad

    .line 368
    :cond_17c
    const-string p2, "--task"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_192

    .line 369
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1ad

    .line 370
    :cond_192
    const-string p2, "--task-overlay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a0

    .line 371
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto :goto_1ad

    .line 372
    :cond_1a0
    const-string p2, "--lock-task"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ae

    .line 373
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    .line 377
    :goto_1ad
    return v1

    .line 375
    :cond_1ae
    return v2
.end method
