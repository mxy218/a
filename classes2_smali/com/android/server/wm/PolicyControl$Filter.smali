.class Lcom/android/server/wm/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    .line 200
    iput-object p2, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    .line 201
    return-void
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "=("

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    .line 234
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_22

    .line 235
    if-lez v0, :cond_16

    const/16 v1, 0x2c

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 236
    :cond_16
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 238
    :cond_22
    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 239
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v0, "*"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method static parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;
    .registers 8

    .line 251
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 253
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 254
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_3b

    aget-object v4, p0, v3

    .line 255
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_35

    .line 257
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 260
    :cond_35
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 263
    :cond_3b
    new-instance p0, Lcom/android/server/wm/PolicyControl$Filter;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-object p0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 226
    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "whitelist"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v1, "blacklist"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 229
    return-void
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7

    .line 204
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 205
    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v1, v3, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v0

    .line 207
    :goto_12
    const-string v3, "apps"

    if-eqz v1, :cond_1f

    iget-object v4, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v0

    .line 208
    :cond_1f
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    return v0

    .line 209
    :cond_28
    if-eqz v1, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v2

    .line 210
    :cond_33
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 243
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 244
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
