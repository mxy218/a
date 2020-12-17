.class public Lcom/android/systemui/volume/VolumePanel$VolumeIndex;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeIndex"
.end annotation


# instance fields
.field public index:I

.field public max:I

.field public min:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;I)V
    .registers 4

    .line 3048
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3049
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->min:I

    .line 3050
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->index:I

    .line 3051
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeIndex;->max:I

    return-void
.end method
