.class Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "scaleAlphaValue"
.end annotation


# instance fields
.field public a:F

.field public s:F

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1485
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FF)V
    .registers 4

    .line 1486
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->s:F

    .line 1488
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->a:F

    return-void
.end method
