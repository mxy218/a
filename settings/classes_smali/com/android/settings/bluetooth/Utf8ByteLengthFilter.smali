.class public Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMaxBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    move/from16 v3, p2

    move v4, v2

    :goto_8
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x800

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v3, v1, :cond_21

    .line 55
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v10, v8, :cond_18

    goto :goto_1d

    :cond_18
    if-ge v10, v7, :cond_1c

    move v9, v5

    goto :goto_1d

    :cond_1c
    move v9, v6

    :goto_1d
    add-int/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 58
    :cond_21
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move v10, v2

    :goto_26
    if-ge v2, v3, :cond_43

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p4

    if-lt v2, v11, :cond_32

    if-lt v2, v12, :cond_40

    .line 63
    :cond_32
    invoke-interface {v13, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    if-ge v14, v8, :cond_3a

    move v14, v9

    goto :goto_3f

    :cond_3a
    if-ge v14, v7, :cond_3e

    move v14, v5

    goto :goto_3f

    :cond_3e
    move v14, v6

    :goto_3f
    add-int/2addr v10, v14

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_43
    move-object v2, p0

    .line 67
    iget v2, v2, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int/2addr v2, v10

    if-gtz v2, :cond_4c

    const-string v0, ""

    return-object v0

    :cond_4c
    const/4 v3, 0x0

    if-lt v2, v4, :cond_50

    return-object v3

    :cond_50
    move v4, v2

    move/from16 v2, p2

    :goto_53
    if-ge v2, v1, :cond_71

    .line 75
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v10, v8, :cond_5d

    move v10, v9

    goto :goto_62

    :cond_5d
    if-ge v10, v7, :cond_61

    move v10, v5

    goto :goto_62

    :cond_61
    move v10, v6

    :goto_62
    sub-int/2addr v4, v10

    if-gez v4, :cond_6c

    move/from16 v10, p2

    .line 78
    invoke-interface {v0, v10, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_6c
    move/from16 v10, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_71
    return-object v3
.end method
