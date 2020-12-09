.class final Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService$VibratorShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommonOptions"
.end annotation


# instance fields
.field public force:Z

.field final synthetic this$1:Lcom/android/server/VibratorService$VibratorShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService$VibratorShellCommand;)V
    .registers 2

    .line 1577
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->this$1:Lcom/android/server/VibratorService$VibratorShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V
    .registers 3

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 4

    .line 1580
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x5d9

    if-eq v0, v1, :cond_9

    :cond_8
    goto :goto_13

    :cond_9
    const-string v0, "-f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_14

    :goto_13
    const/4 p1, -0x1

    :goto_14
    if-eqz p1, :cond_17

    goto :goto_1a

    .line 1582
    :cond_17
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    .line 1585
    :goto_1a
    return-void
.end method
