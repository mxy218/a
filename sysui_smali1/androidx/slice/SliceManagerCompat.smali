.class Landroidx/slice/SliceManagerCompat;
.super Landroidx/slice/SliceManager;
.source "SliceManagerCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPinnedSlices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSlices(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .registers 2
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSpecs(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
