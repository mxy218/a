.class public Landroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .line 58
    instance-of v0, p0, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_b

    .line 61
    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {p0}, Landroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    return-object p0

    .line 59
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parcel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .param p0  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_a

    return-object v0

    .line 113
    :cond_a
    const-class p1, Landroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "a"

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-static {p0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    return-object v0
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 48
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-object v0
.end method
