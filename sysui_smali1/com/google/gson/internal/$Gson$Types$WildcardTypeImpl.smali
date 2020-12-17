.class final Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 6

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 540
    array-length v0, p1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 542
    array-length v0, p2

    if-ne v0, v1, :cond_3c

    .line 543
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 545
    aget-object p1, p1, v2

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 546
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 547
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_51

    .line 550
    :cond_3c
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    const/4 p2, 0x0

    .line 552
    iput-object p2, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 553
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    :goto_51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 566
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 567
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 3

    .line 562
    iget-object p0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    :goto_d
    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 558
    iget-object p0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    iget-object p0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1c

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 579
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_25

    const-string p0, "?"

    return-object p0

    .line 582
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
