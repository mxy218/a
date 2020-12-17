.class Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$2;
.super Ljava/lang/Object;
.source "DefaultOpenFileSettingsList.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->doCreate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 169
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$300(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1a

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$400(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_23

    .line 173
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$500(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_23
    return-void
.end method
