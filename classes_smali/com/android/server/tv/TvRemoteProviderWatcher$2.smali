.class Lcom/android/server/tv/TvRemoteProviderWatcher$2;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$300(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    .line 213
    return-void
.end method
