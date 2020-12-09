.class public Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AppPredictionManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 36
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 40
    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1bc62

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_17

    :cond_16
    goto :goto_22

    :cond_17
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v4

    goto :goto_23

    :goto_22
    move v1, v3

    :goto_23
    if-eqz v1, :cond_2a

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 46
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x77724739

    if-eq v1, v2, :cond_38

    :cond_37
    goto :goto_42

    :cond_38
    const-string/jumbo v1, "temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    move v3, v4

    :goto_42
    if-eqz v3, :cond_45

    goto :goto_89

    .line 49
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 51
    if-nez v1, :cond_59

    .line 52
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->resetTemporaryService(I)V

    .line 53
    return v4

    .line 55
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 56
    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppPredictionService temporarily set to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    nop

    .line 63
    :goto_89
    nop

    .line 67
    return v4
.end method

.method public onHelp()V
    .registers 4

    .line 72
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 73
    :try_start_6
    const-string v2, "AppPredictionManagerService commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2e

    .line 81
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 82
    return-void

    .line 72
    :catchall_2e
    move-exception v0

    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 81
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v2
.end method
