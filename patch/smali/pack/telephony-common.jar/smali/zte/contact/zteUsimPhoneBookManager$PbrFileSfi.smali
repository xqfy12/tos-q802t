.class Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;
.super Ljava/lang/Object;
.source "zteUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/contact/zteUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFileSfi"
.end annotation


# instance fields
.field mSfiFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzte/contact/zteUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1528
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1529
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    .line 1531
    const/4 v1, 0x0

    .line 1532
    .local v1, "recNum":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1533
    .local v3, "record":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1534
    .local v2, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v2    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v3    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 9
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v8, 0xa9

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1564
    const/4 v3, 0x0

    .line 1566
    .local v3, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 1567
    .local v2, "tag":I
    if-ne p3, v8, :cond_1

    const/16 v4, 0xc4

    if-ne v2, v4, :cond_1

    .line 1568
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    # setter for: Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z
    invoke-static {v4, v6}, Lzte/contact/zteUsimPhoneBookManager;->access$002(Lzte/contact/zteUsimPhoneBookManager;Z)Z

    .line 1569
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    # setter for: Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I
    invoke-static {v4, v3}, Lzte/contact/zteUsimPhoneBookManager;->access$102(Lzte/contact/zteUsimPhoneBookManager;I)I

    .line 1572
    :cond_1
    if-ne p3, v8, :cond_2

    const/16 v4, 0xca

    if-ne v2, v4, :cond_2

    .line 1573
    # setter for: Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v6}, Lzte/contact/zteUsimPhoneBookManager;->access$202(Z)Z

    .line 1574
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    # setter for: Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v4, v3}, Lzte/contact/zteUsimPhoneBookManager;->access$302(Lzte/contact/zteUsimPhoneBookManager;I)I

    .line 1576
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1600
    :cond_3
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1601
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1602
    return-void

    .line 1589
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1590
    .local v0, "data":[B
    if-eqz v0, :cond_3

    .line 1591
    array-length v4, v0

    if-le v4, v7, :cond_4

    .line 1592
    aget-byte v4, v0, v7

    and-int/lit16 v1, v4, 0xff

    .line 1593
    .local v1, "sfi":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1595
    .end local v1    # "sfi":I
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    .prologue
    .line 1543
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1545
    .local v3, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1546
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    .line 1557
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1558
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    return-void

    .line 1550
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1551
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 1552
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1553
    .local v2, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    .line 1546
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
