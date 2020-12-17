.class Lcom/meizu/settings/applications/DefaultAppSettingsList$2;
.super Ljava/lang/Object;
.source "DefaultAppSettingsList.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsList;->doCreate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 214
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1a

    .line 216
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$400(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_23

    .line 218
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$500(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_23
    return-void
.end method
