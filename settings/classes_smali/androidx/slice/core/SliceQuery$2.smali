.class final Landroidx/slice/core/SliceQuery$2;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/slice/core/SliceQuery$Filter<",
        "Landroidx/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$hints:[Ljava/lang/String;

.field final synthetic val$nonHints:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 129
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    iput-object p2, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Landroidx/slice/SliceItem;)Z
    .registers 3

    .line 132
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    .line 133
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .registers 2

    .line 129
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$2;->filter(Landroidx/slice/SliceItem;)Z

    move-result p0

    return p0
.end method