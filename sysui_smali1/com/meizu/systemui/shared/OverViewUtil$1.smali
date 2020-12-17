.class Lcom/meizu/systemui/shared/OverViewUtil$1;
.super Landroid/database/ContentObserver;
.source "OverViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/systemui/shared/OverViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/systemui/shared/OverViewUtil;


# direct methods
.method constructor <init>(Lcom/meizu/systemui/shared/OverViewUtil;Landroid/os/Handler;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/meizu/systemui/shared/OverViewUtil$1;->this$0:Lcom/meizu/systemui/shared/OverViewUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 83
    invoke-static {}, Lcom/meizu/systemui/shared/OverViewUtil;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 84
    iget-object p0, p0, Lcom/meizu/systemui/shared/OverViewUtil$1;->this$0:Lcom/meizu/systemui/shared/OverViewUtil;

    invoke-static {p0}, Lcom/meizu/systemui/shared/OverViewUtil;->access$100(Lcom/meizu/systemui/shared/OverViewUtil;)V

    :cond_f
    return-void
.end method
