.class Lcom/google/common/base/CharMatcher$1;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 4

    const/16 p0, 0x20

    const/4 v0, 0x1

    if-eq p1, p0, :cond_31

    const/16 p0, 0x85

    if-eq p1, p0, :cond_31

    const/16 p0, 0x1680

    if-eq p1, p0, :cond_31

    const/16 p0, 0x2007

    const/4 v1, 0x0

    if-eq p1, p0, :cond_30

    const/16 p0, 0x205f

    if-eq p1, p0, :cond_31

    const/16 p0, 0x3000

    if-eq p1, p0, :cond_31

    const/16 p0, 0x2028

    if-eq p1, p0, :cond_31

    const/16 p0, 0x2029

    if-eq p1, p0, :cond_31

    packed-switch p1, :pswitch_data_32

    const/16 p0, 0x2000

    if-lt p1, p0, :cond_2e

    const/16 p0, 0x200a

    if-gt p1, p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    :cond_30
    return v1

    :cond_31
    :pswitch_31  #0x9, 0xa, 0xb, 0xc, 0xd
    return v0

    :pswitch_data_32
    .packed-switch 0x9
        :pswitch_31  #00000009
        :pswitch_31  #0000000a
        :pswitch_31  #0000000b
        :pswitch_31  #0000000c
        :pswitch_31  #0000000d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "CharMatcher.BREAKING_WHITESPACE"

    return-object p0
.end method
