.class Lcom/android/server/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4841
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .registers 3

    .line 4841
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method getBinderService()Landroid/app/IAlarmManager;
    .registers 2

    .line 4844
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3800(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8

    .line 4849
    if-nez p1, :cond_7

    .line 4850
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4853
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4855
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519f2558

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_28

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_1d

    :cond_1c
    goto :goto_33

    :cond_1d
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_34

    :cond_28
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v5

    goto :goto_34

    :goto_33
    move v2, v1

    :goto_34
    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3d

    .line 4864
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4860
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 4861
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 4862
    return v5

    .line 4857
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4858
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_59} :catch_5d

    if-eqz p1, :cond_5c

    move v1, v5

    :cond_5c
    return v1

    .line 4866
    :catch_5d
    move-exception p1

    .line 4867
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4869
    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 4874
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4875
    const-string v1, "Alarm manager service (alarm) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    const-string v1, "  set-time TIME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4879
    const-string v1, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4880
    const-string v1, "    since the Epoch."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4881
    const-string v1, "  set-timezone TZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4882
    const-string v1, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4883
    return-void
.end method
