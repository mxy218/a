.class Lcom/meizu/settings/DeleteButtonPreference$1;
.super Ljava/lang/Object;
.source "DeleteButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/DeleteButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/DeleteButtonPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/DeleteButtonPreference;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/DeleteButtonPreference$1;->this$0:Lcom/meizu/settings/DeleteButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string p1, "VpnDeletePreference"

    const-string/jumbo v0, "onClick"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/DeleteButtonPreference$1;->this$0:Lcom/meizu/settings/DeleteButtonPreference;

    invoke-static {p1}, Lcom/meizu/settings/DeleteButtonPreference;->access$000(Lcom/meizu/settings/DeleteButtonPreference;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/DeleteButtonPreference$1;->this$0:Lcom/meizu/settings/DeleteButtonPreference;

    invoke-static {p0}, Lcom/meizu/settings/DeleteButtonPreference;->access$000(Lcom/meizu/settings/DeleteButtonPreference;)Landroid/view/View$OnClickListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1a
    return-void
.end method
