.class Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;
.super Ljava/lang/Object;
.source "ContentSuggestionsPerUserService.java"

# interfaces
.implements Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;


# direct methods
.method constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 169
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDied(Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 173
    invoke-static {}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remote content suggestions service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    .line 175
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 169
    check-cast p1, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->onServiceDied(Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;)V

    return-void
.end method
