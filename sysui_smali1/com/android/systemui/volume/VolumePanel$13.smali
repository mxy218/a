.class Lcom/android/systemui/volume/VolumePanel$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1658
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1662
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-string v0, "onAnimationEnd: [SHOW] UNEXTEND ==>> EXTEND"

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;)V

    .line 1663
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method
