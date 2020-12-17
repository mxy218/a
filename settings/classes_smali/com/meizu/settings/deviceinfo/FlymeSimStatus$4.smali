.class Lcom/meizu/settings/deviceinfo/FlymeSimStatus$4;
.super Ljava/lang/Object;
.source "FlymeSimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .line 476
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$1000(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/widget/TabHost;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
