.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;->f$0:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;->f$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->lambda$layoutLetterbox$3$AppWindowToken()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method
