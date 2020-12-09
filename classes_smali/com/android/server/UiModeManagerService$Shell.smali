.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2

    .line 1039
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1040
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 1041
    return-void
.end method

.method static synthetic access$2400(I)Ljava/lang/String;
    .registers 1

    .line 1032
    invoke-static {p0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleNightMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1076
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 1077
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 1078
    return v2

    .line 1081
    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v1

    .line 1082
    if-ltz v1, :cond_1e

    .line 1083
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->setNightMode(I)V

    .line 1084
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 1085
    return v2

    .line 1087
    :cond_1e
    const-string v1, "Error: mode must be \'yes\', \'no\', or \'auto\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    const/4 v0, -0x1

    return v0
.end method

.method private static nightModeToStr(I)Ljava/lang/String;
    .registers 2

    .line 1101
    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    .line 1109
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 1103
    :cond_c
    const-string/jumbo p0, "yes"

    return-object p0

    .line 1105
    :cond_10
    const-string/jumbo p0, "no"

    return-object p0

    .line 1107
    :cond_14
    const-string p0, "auto"

    return-object p0
.end method

.method private printCurrentNightMode()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    .line 1096
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v1

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Night mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .registers 7

    .line 1114
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xdc1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2c

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_21

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_17

    :cond_16
    goto :goto_37

    :cond_17
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v4

    goto :goto_38

    :cond_21
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v2

    goto :goto_38

    :cond_2c
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v5

    goto :goto_38

    :goto_37
    move p0, v3

    :goto_38
    if-eqz p0, :cond_41

    if-eq p0, v5, :cond_40

    if-eq p0, v4, :cond_3f

    .line 1122
    return v3

    .line 1120
    :cond_3f
    return v2

    .line 1118
    :cond_40
    return v5

    .line 1116
    :cond_41
    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 1055
    if-nez p1, :cond_7

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1060
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x63f6418

    if-eq v1, v2, :cond_12

    :cond_11
    goto :goto_1d

    :cond_12
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1e

    :goto_1d
    move v1, v0

    :goto_1e
    if-eqz v1, :cond_25

    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1062
    :cond_25
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_29} :catch_2a

    return p1

    .line 1066
    :catch_2a
    move-exception p1

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    return v0
.end method

.method public onHelp()V
    .registers 3

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1046
    const-string v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-string v1, "  night [yes|no|auto]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const-string v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    return-void
.end method
