.class Lcom/meizu/settings/search/SearchFragment$6;
.super Lflyme/support/v7/widget/LinearLayoutManager;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/SearchFragment;Landroid/content/Context;)V
    .registers 3

    .line 581
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$6;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
