.class Landroidx/leanback/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/SearchBar;

.field final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .registers 3

    .line 222
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 230
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-boolean p2, p1, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz p2, :cond_7

    return-void

    .line 234
    :cond_7
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
