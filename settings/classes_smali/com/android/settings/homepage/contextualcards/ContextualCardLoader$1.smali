.class Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;
.super Landroid/database/ContentObserver;
.source "ContextualCardLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 64
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 65
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mNotifyUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_f
    return-void
.end method
