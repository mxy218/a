.class Lcom/android/systemui/usb/StorageNotification$MoveInfo;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public extras:Landroid/os/Bundle;

.field public label:Ljava/lang/String;

.field public moveId:I

.field public packageName:Ljava/lang/String;

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$MoveInfo;-><init>()V

    return-void
.end method
