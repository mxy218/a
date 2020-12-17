.class synthetic Lcom/android/server/ConnectivityService$9;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

.field static final synthetic $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 3757
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    :try_start_23
    sget-object v2, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v2

    :goto_30
    :try_start_30
    sget-object v2, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v2

    .line 3316
    :goto_3d
    invoke-static {}, Lcom/android/server/ConnectivityService$UnneededFor;->values()[Lcom/android/server/ConnectivityService$UnneededFor;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    :try_start_46
    sget-object v2, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    :goto_52
    :try_start_52
    sget-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    sget-object v2, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    return-void
.end method
