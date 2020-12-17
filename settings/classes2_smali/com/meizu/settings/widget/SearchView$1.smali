.class Lcom/meizu/settings/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SearchView;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_26

    .line 89
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_26

    .line 90
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$100(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$200(Lcom/meizu/settings/widget/SearchView;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 92
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SearchView;->access$300(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    .line 95
    :cond_26
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$100(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$200(Lcom/meizu/settings/widget/SearchView;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 97
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SearchView;->access$300(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "text watcher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SEARCH"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$1;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/SearchView;->access$000(Lcom/meizu/settings/widget/SearchView;Ljava/lang/CharSequence;)V

    return-void
.end method
