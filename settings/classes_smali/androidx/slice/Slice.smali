.class public final Landroidx/slice/Slice;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "Slice.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/Slice$Builder;,
        Landroidx/slice/Slice$SliceHint;
    }
.end annotation


# static fields
.field static final NO_HINTS:[Ljava/lang/String;

.field static final NO_ITEMS:[Landroidx/slice/SliceItem;


# instance fields
.field mHints:[Ljava/lang/String;

.field mItems:[Landroidx/slice/SliceItem;

.field mSpec:Landroidx/slice/SliceSpec;

.field mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 104
    sput-object v1, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    new-array v0, v0, [Landroidx/slice/SliceItem;

    .line 105
    sput-object v0, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 139
    sget-object v1, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 141
    sget-object v1, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 144
    iput-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 139
    sget-object v1, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 141
    sget-object v1, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 144
    iput-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    const-string v1, "hints"

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v1, "items"

    .line 173
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 174
    array-length v2, v1

    new-array v2, v2, [Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v2, 0x0

    .line 175
    :goto_24
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v4, v3

    if-ge v2, v4, :cond_3d

    .line 176
    aget-object v4, v1, v2

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_3a

    .line 177
    new-instance v4, Landroidx/slice/SliceItem;

    aget-object v5, v1, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroidx/slice/SliceItem;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v3, v2

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3d
    const-string/jumbo v1, "uri"

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    const-string/jumbo v1, "type"

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    new-instance v0, Landroidx/slice/SliceSpec;

    .line 182
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "revision"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    :cond_63
    iput-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V
    .registers 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroidx/slice/SliceSpec;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 139
    sget-object v1, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 141
    sget-object v1, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 144
    iput-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroidx/slice/SliceItem;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/slice/SliceItem;

    iput-object p1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 155
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    return-void
.end method

.method public static appendHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 590
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_28

    :cond_6
    const/16 v0, 0x28

    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1e

    .line 595
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 596
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 598
    :cond_1e
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 599
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    return-void
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .registers 5
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 616
    invoke-static {p0, p1, p2}, Landroidx/slice/Slice;->callBindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 618
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private static callBindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 625
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    .line 626
    invoke-static {p2}, Landroidx/slice/SliceConvert;->unwrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object p1

    .line 625
    invoke-static {p1, p0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method static isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 637
    :cond_4
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2b

    .line 638
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add icon, invalid resource id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getHintArray()[Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 250
    iget-object p0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    return-object p0
.end method

.method public getHints()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItemArray()[Landroidx/slice/SliceItem;
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 235
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSpec()Landroidx/slice/SliceSpec;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 212
    iget-object p0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 219
    iget-object p0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 258
    iget-object p0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPostParceling()V
    .registers 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_27

    .line 276
    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    aget-object v2, v1, v0

    iget-object v2, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    if-nez v2, :cond_24

    .line 277
    const-class v2, Landroidx/slice/SliceItem;

    aget-object v3, v1, v0

    invoke-static {v2, v1, v3}, Landroidx/slice/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 278
    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    if-nez v1, :cond_24

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/slice/SliceItem;

    .line 279
    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_27
    return-void
.end method

.method public onPreParceling(Z)V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    iget-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v2, "hints"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v1, v1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    .line 194
    :goto_12
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v4, v3

    if-ge v2, v4, :cond_22

    .line 195
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    const-string v2, "items"

    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 198
    iget-object v1, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    iget-object v1, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    if-eqz v1, :cond_4d

    .line 200
    invoke-virtual {v1}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result p0

    const-string/jumbo v1, "revision"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 556
    invoke-virtual {p0, v0}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Slice "

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_1a

    .line 569
    invoke-static {v0, v1}, Landroidx/slice/Slice;->appendHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    const/16 v1, 0x5b

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] {\n"

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 576
    :goto_3b
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v4, v3

    if-ge v2, v4, :cond_4c

    .line 577
    aget-object v3, v3, v2

    .line 578
    invoke-virtual {v3, v1}, Landroidx/slice/SliceItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 580
    :cond_4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
