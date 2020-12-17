.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$5$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V

    return-void
.end method
