# BAE 假设

# ===================== 1 通用假设 =================

# --------------------- 投资收益率假设 ----------------

#  用于内含价值(EV)、新业务价值(VNB)、
#       毛保费准备金(GPV)和现金流预测的投资收益率假设

bae.ev.inv_rate_df = data.frame(tr=0.05, par=0.05, uv=0.055)
bae.vnb.inv_rate_df = bae.ev.inv_rate_df
bae.gpv.inv_rate_df = bae.ev.inv_rate_df

# 用于动态偿付能力测试（DST）的投资收益率假设
bae.dst.inv_rate_df = data.frame(tr=0.046055, par=0.05, uv=0.055)

#	EV、VNB等使用的风险贴现率
bae.ev.rdisc_rate = 0.12 # 年化
bae.vnb.rdisc_rate = bae.ev.rdisc_rate

# 财务报告准备金评估使用的贴现率
bae.acnt.rdisc_rate = data.frame(par=0.05, uv=0.05)

# 通胀率
bae.inflation = 0.03

# 分红利率和分红比例
bae.par.bonus = read.csv("bae.par.bonus")

# 万能结算利率
bae.uv.rate = read.csv("bae.uv.rate")

# 2.7	保险保障基金 计提基础为保费收入
bae.fund = read.csv("bae.fund")

#	保险业务监管费
bae.regular = read.csv("bae.regular")

# 税金
bae.tax.comp = 0.25
bae.tax.run = 0.055 # 短期（保险期间少于等于1年）意外险，按照毛保费收入的5.5%计提营业税金及附加



# =============================== 个人营销渠道假设 ============================

# agent commission
bae.agent.commission = read.csv("bae.agent.commission.csv")

# indirect commission
bae.agent.fyc = 1.2
bae.agent.syc = 0.8

# management fee
bae.agent.maintain 








