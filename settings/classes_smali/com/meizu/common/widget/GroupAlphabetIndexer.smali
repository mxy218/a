.class public Lcom/meizu/common/widget/GroupAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "GroupAlphabetIndexer.java"


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mFirstGroupLetters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    const-string p1, "1234567890"

    .line 16
    iput-object p1, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    .line 21
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 22
    iget-object p0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/GroupAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    .line 51
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_d
    const-string p1, " "

    .line 53
    :goto_f
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 54
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v2

    :cond_1c
    return v1

    .line 59
    :cond_1d
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_25

    const/4 p0, -0x1

    return p0

    .line 63
    :cond_25
    iget-object p0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFirstGroupLetters(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    return-void
.end method
