.class public Lcom/meizu/settings/widget/LongClickCopyTextView;
.super Landroid/widget/TextView;
.source "LongClickCopyTextView.java"


# instance fields
.field private mNeedPerformClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LongClickCopyTextView;->mNeedPerformClick:Z

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/widget/LongClickCopyTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LongClickCopyTextView;->mNeedPerformClick:Z

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/widget/LongClickCopyTextView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method


# virtual methods
.method public performLongClick()Z
    .registers 4

    .line 33
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LongClickCopyTextView;->mNeedPerformClick:Z

    if-eqz v0, :cond_9

    .line 34
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result p0

    return p0

    .line 37
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 40
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 42
    :cond_1a
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public setNeedPerformClick(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LongClickCopyTextView;->mNeedPerformClick:Z

    xor-int/lit8 p1, p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method
