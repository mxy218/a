.class Lcom/meizu/settings/widget/SystemLockView$1;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/settings/widget/SystemLockView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    .line 458
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/settings/widget/SystemLockView;->access$800(Lcom/meizu/settings/widget/SystemLockView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->editEnd:I

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/meizu/settings/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/settings/widget/SystemLockView;->access$902(Lcom/meizu/settings/widget/SystemLockView;Z)Z

    move v2, v3

    :goto_1f
    const/4 v4, 0x1

    if-ge v2, v0, :cond_37

    .line 465
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_32

    const/16 v6, 0x7f

    if-le v5, v6, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 467
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0, v4}, Lcom/meizu/settings/widget/SystemLockView;->access$902(Lcom/meizu/settings/widget/SystemLockView;Z)Z

    .line 472
    :cond_37
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0, v3}, Lcom/meizu/settings/widget/SystemLockView;->access$1002(Lcom/meizu/settings/widget/SystemLockView;Z)Z

    .line 473
    :goto_3c
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v3, v0, :cond_61

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x41

    if-lt v0, v2, :cond_50

    const/16 v2, 0x5a

    if-le v0, v2, :cond_58

    :cond_50
    const/16 v2, 0x61

    if-lt v0, v2, :cond_5e

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_5e

    .line 476
    :cond_58
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0, v4}, Lcom/meizu/settings/widget/SystemLockView;->access$1002(Lcom/meizu/settings/widget/SystemLockView;Z)Z

    goto :goto_61

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 480
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_72

    .line 481
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->editEnd:I

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 482
    :cond_72
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$1;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->access$1100(Lcom/meizu/settings/widget/SystemLockView;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 447
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    return-void
.end method
