.class Lcom/android/keyguard/EmergencyCarrierArea$1;
.super Ljava/lang/Object;
.source "EmergencyCarrierArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyCarrierArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyCarrierArea;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    .line 51
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_28

    const/4 p2, 0x1

    if-eq p1, p2, :cond_18

    goto :goto_36

    .line 56
    :cond_18
    iget-object p0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_36

    .line 53
    :cond_28
    iget-object p0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_36
    return v0
.end method