.class Lcom/android/systemui/doze/DozeSensors$1;
.super Landroid/database/ContentObserver;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V
    .registers 3

    .line 242
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 245
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p3, p1, :cond_7

    return-void

    .line 248
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_d
    if-ge p2, p1, :cond_17

    aget-object p3, p0, p2

    .line 249
    invoke-virtual {p3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method
