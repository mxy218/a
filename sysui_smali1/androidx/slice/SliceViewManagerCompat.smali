.class Landroidx/slice/SliceViewManagerCompat;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .registers 3
    .param p1  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 59
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method
