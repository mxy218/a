.class final Lcom/android/server/display/BrightnessTracker$DisplayListener;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    .line 897
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V
    .registers 3

    .line 897
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 902
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 911
    if-nez p1, :cond_7

    .line 912
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$600(Lcom/android/server/display/BrightnessTracker;)V

    .line 914
    :cond_7
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 907
    return-void
.end method
