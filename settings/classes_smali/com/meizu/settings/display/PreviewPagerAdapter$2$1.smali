.class Lcom/meizu/settings/display/PreviewPagerAdapter$2$1;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/PreviewPagerAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/display/PreviewPagerAdapter$2;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/PreviewPagerAdapter$2;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2$1;->this$1:Lcom/meizu/settings/display/PreviewPagerAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2$1;->this$1:Lcom/meizu/settings/display/PreviewPagerAdapter$2;

    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {p0}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$300(Lcom/meizu/settings/display/PreviewPagerAdapter;)V

    return-void
.end method
