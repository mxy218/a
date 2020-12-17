.class Landroidx/slice/widget/RemoteInputView$1;
.super Ljava/lang/Object;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RemoteInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RemoteInputView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RemoteInputView;)V
    .registers 2

    .line 100
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_f

    const/4 v1, 0x6

    if-eq p2, v1, :cond_d

    const/4 v1, 0x5

    if-eq p2, v1, :cond_d

    const/4 v1, 0x4

    if-ne p2, v1, :cond_f

    :cond_d
    move p2, p1

    goto :goto_10

    :cond_f
    move p2, v0

    :goto_10
    if-eqz p3, :cond_24

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroidx/slice/widget/RemoteInputView;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_24

    move p3, p1

    goto :goto_25

    :cond_24
    move p3, v0

    :goto_25
    if-nez p2, :cond_2b

    if-eqz p3, :cond_2a

    goto :goto_2b

    :cond_2a
    return v0

    .line 112
    :cond_2b
    :goto_2b
    iget-object p2, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    iget-object p2, p2, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-lez p2, :cond_3a

    .line 113
    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    :cond_3a
    return p1
.end method
