.class Lcom/android/server/firewall/StringFilter$IsNullFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsNullFilter"
.end annotation


# instance fields
.field private final mIsNull:Z


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V
    .registers 4

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    .line 221
    iput-boolean p2, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    .line 222
    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 5

    .line 226
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    move p1, v1

    :goto_7
    iget-boolean v2, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    if-ne p1, v2, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method
