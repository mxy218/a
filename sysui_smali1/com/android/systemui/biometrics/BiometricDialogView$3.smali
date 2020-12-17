.class Lcom/android/systemui/biometrics/BiometricDialogView$3;
.super Ljava/lang/Object;
.source "BiometricDialogView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    return p1

    .line 187
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_13

    iget-boolean p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    if-nez p2, :cond_13

    .line 188
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    goto :goto_2f

    .line 189
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1c

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    goto :goto_2f

    .line 191
    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_2f

    iget-boolean p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    if-ne p2, v0, :cond_2f

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->downPressed:Z

    .line 193
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$3;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_2f
    :goto_2f
    return v0
.end method
