.class Lcom/android/systemui/volume/VolumePanel$showHideValue;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showHideValue"
.end annotation


# instance fields
.field public s:F

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field public x:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1475
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FF)V
    .registers 4

    .line 1476
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->s:F

    .line 1478
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->x:F

    return-void
.end method
